class TableCreater
  def make_row(node)
    <<-TABLEROW
<tr>
  <td> #{node.name} </td>
  <td> #{node.created_at} </td>
</tr>
TABLEROW
  end

  def make_header
    <<-TABLEHEAD
<thead>
  <tr>
    <th>#{Mission.human_attribute_name(:name)}</th>
    <th>#{Mission.human_attribute_name(:created_at)}</th>
  </tr>
</thead>
TABLEHEAD
  end
  
  def table_class
    "class = \"table table-condensed table-treegrid\""
  end
end
