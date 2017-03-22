class CreateJoinTableGuestEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_join_table :guests, :episodes do |t|
      t.index [:guest_id, :episode_id]
      # t.index [:episode_id, :guest_id]
    end
  end
end
