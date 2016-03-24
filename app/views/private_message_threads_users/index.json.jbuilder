json.array!(@private_message_threads_users) do |private_message_threads_user|
  json.extract! private_message_threads_user, :id, :user_id, :private_message_thread_id
  json.url private_message_threads_user_url(private_message_threads_user, format: :json)
end
