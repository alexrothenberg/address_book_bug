class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    test_issue_28

    true
  end

  def test_issue_28
    puts "About to test Issue 28"
    puts AddressBook::AddrBook.new.people.map &:first_name
    nil.map &:blah
    puts "Got all the people"
  rescue => e
    puts 'Got exception '
    puts e.message
    puts e.backtrace.join("\n")
  end
end
