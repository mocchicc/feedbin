class CreateSupportedSharingServices < ActiveRecord::Migration
  def change
    create_table :supported_sharing_services do |t|
      t.belongs_to :user, index: true, null: false
      t.string :service_id, null: false
      t.hstore :settings

      t.timestamps
    end
  end
end