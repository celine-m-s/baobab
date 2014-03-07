class AddOrganizationslugColumnToOrganizations < ActiveRecord::Migration
  def change
  	add_column :organizations, :organizationslug, :string
  end
end
