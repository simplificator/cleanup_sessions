require "cleanup_sessions/version"

module CleanupSessions
  class CleanupSessionsLoader < Rails::Railtie
    rake_tasks do
      Dir[ File.join File.dirname(__FILE__), "tasks", "*.rake" ].each{ |ext| load ext }
    end
  end
end
