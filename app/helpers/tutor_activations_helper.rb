module TutorActivationsHelper
  def check_email_domain email
    domain_match = email.match(/@(.*)/)
    mock_domains = [
      'yahoo.co.jp',
      'gmail.com'
    ]

    return false if domain_match.nil?

    mock_domains.include? domain_match[0]
  end
end
