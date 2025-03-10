# frozen_string_literal: true
Then(/tuist fetches dependencies/) do
  _, err, status = Open3.capture3(@tuist, "dependencies", "fetch", "--path", @dir)
  flunk(err) unless status.success?
end

Then(/tuist updates dependencies/) do
  _, err, status = Open3.capture3(@tuist, "dependencies", "update", "--path", @dir)
  flunk(err) unless status.success?
end
