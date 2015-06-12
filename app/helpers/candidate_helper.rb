module CandidateHelper
  def progress(status)
    if status == "pending"
      return ""
    elsif status == "screen1"
      return "screen1 completed"
    elsif status == "screen2"
      return "screen1 & screen2 completed"
    elsif status == "screen3"
      return "screen1, screen2 & screen3 completed"
    elsif status == "in person"
      return "in person meeting completed"
    elsif status == "approved"
      return "approved!"
    end
  end

  def display_candidate(firstname, lastname, city)
    "#{firstname} #{lastname} from  #{city}"
  end
end
