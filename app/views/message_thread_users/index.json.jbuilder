json.array!(@message_thread_users) do |message_thread_user|
  json.extract! message_thread_user, :id, :message_thread_id, :user_id
  json.url message_thread_user_url(message_thread_user, format: :json)
end
