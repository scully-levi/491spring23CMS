defmodule CompanyMangementSystem.StoreManagementSystem.Store do
  use Ecto.Schema
  import Ecto.Changeset

  alias CompanyMangementSystem.StoreManagementSystem.Product

  schema "stores" do
    field :location, {:array, :string}
    field :store_id, :integer
    has_many :products, Product
    timestamps()
  end

  @doc false
  def changeset(store, attrs) do
    store
    |> cast(attrs, [:location, :store_id])
    |> validate_required([:location, :store_id])
  end
end
