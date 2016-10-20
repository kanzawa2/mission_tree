# coding: utf-8
module MissionsHelper
  def mission_traverse(mission)
    return "" unless mission
    str = visit_mission(mission)
    mission.children.each do |child|
      str += mission_traverse(child)
    end
    mission.tasks.each do |task|
      str += visit_task(task)
    end

    str
  end

  def visit_mission(mission)
    render partial: "missions/table_row", locals: {mission: mission}
  end
  
  def visit_task(task)
    render partial: "tasks/table_row", locals: {task: task}
  end
end
