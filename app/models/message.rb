class Message < ApplicationRecord
  after_create_commit :broadcast_message
  after_destroy_commit -> { broadcast_remove_to 'message-channel' }

  private

  def broadcast_message
    broadcast_append_to(
      'message-channel',
      partial: 'other/message'
    )
  end
end
