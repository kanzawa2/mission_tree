# coding: utf-8
module MissionsHelper
  def mission_traverse(mission, templates = {})
    return "" unless mission
    m_tmp = templates[:m_tmp] || "table_row"
    t_tmp = templates[:t_tmp] || "table_row"
    str = visit_mission(mission, m_tmp)
    mission.children.each do |child|
      str += mission_traverse(child, {m_tmp: m_tmp, t_tmp: t_tmp})
    end
    mission.tasks.each do |task|
      str += visit_task(task, t_tmp)
    end

    str
  end

  def visit_mission(mission, m_template)
    render partial: "missions/#{m_template}", locals: {mission: mission}
  end
  
  def visit_task(task, t_template)
    render partial: "tasks/#{t_template}", locals: {task: task}
  end
end
