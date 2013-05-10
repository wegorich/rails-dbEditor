module ElectivesHelper
  def elective_items
    @electives ||= Elective.last(10)
  end
end
