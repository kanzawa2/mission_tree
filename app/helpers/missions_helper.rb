# coding: utf-8
module MissionsHelper
  def mission_traverse(node, creater)
    str = []
    return "" unless node
    str << creater.make_row(node)
    node.children.each do |child|
      str << mission_traverse(child, creater)
    end
    node.tasks.each do |task|
      str << creater.make_row(task)
    end
    
    str
  end
  
  def make_table(roots, creater)
    str = []
    str << "<table #{creater.table_class}>"
    str << creater.make_header
    str << "<tbody>"
    roots.each do |root|
      str << mission_traverse(root, creater)
    end
    str << "</tbody>"
    str << "</table>"
    
    str.join.html_safe
  end
end
