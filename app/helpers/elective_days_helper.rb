module ElectiveDaysHelper
  def current_month_hour(electives)
    electives.where('time between ? and ?', Date.today.beginning_of_month, Date.today.next_month.beginning_of_month).sum :num
  end

  def current_year_hour(electives)
    electives.where('time between ? and ?', Date.today.beginning_of_year, Date.today.next_year.beginning_of_year).sum :num
  end
end
