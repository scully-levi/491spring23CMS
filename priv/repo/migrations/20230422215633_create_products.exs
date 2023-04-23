defmodule CompanyMangementSystem.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :vendor, :string
      add :wholesalePrice, :float
      add :retailPrice, :float
      add :inventoryCount, :integer
      add :store_id, references(:stores, on_delete: :nothing)
      add :name, :string

      timestamps()
    end

    create index(:products, [:store_id])
  end
end
