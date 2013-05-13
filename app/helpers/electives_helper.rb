module ElectivesHelper
  def elective_items
    @electives ||= Elective.last(10)
  end
  def electives_items
    @electives ||= Elective.all
  end
end
