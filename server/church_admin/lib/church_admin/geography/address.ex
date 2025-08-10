# CREATE TABLE public.addresses (
# 	id uuid DEFAULT gen_random_uuid() NOT NULL,
# 	country_iso_code text DEFAULT 'EG'::text NOT NULL,
# 	district_id uuid NULL,
# 	area_id uuid NOT NULL,
# 	street_id uuid NOT NULL,
# 	substreet_name text NULL,
# 	geolocation public.geography(point, 4326) NULL,
# 	storey_number int2 NULL,
# 	house_number int2 NULL,
# 	apartment_number int2 NULL,
# 	special_landmark text NULL,
# 	family_id uuid NULL,
# 	store_id uuid NULL,
# 	CONSTRAINT addresses_family_or_store_check CHECK (((family_id IS NOT NULL) <> (store_id IS NOT NULL))),
# 	CONSTRAINT addresses_pk PRIMARY KEY (id),
# 	CONSTRAINT check_address_insertion TRIGGER DEFERRABLE INITIALLY DEFERRED,
# 	CONSTRAINT check_address_street_same_area TRIGGER DEFERRABLE INITIALLY DEFERRED,
# 	CONSTRAINT addresses_areas_fk FOREIGN KEY (area_id) REFERENCES public.areas(id) ON DELETE RESTRICT ON UPDATE CASCADE,
# 	CONSTRAINT addresses_districts_fk FOREIGN KEY (district_id) REFERENCES public.districts(id) ON DELETE RESTRICT ON UPDATE CASCADE,
# 	CONSTRAINT addresses_families_fk FOREIGN KEY (family_id) REFERENCES public.families(id) ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED,
# 	CONSTRAINT addresses_stores_fk FOREIGN KEY (store_id) REFERENCES public.stores(id) ON DELETE CASCADE ON UPDATE CASCADE,
# 	CONSTRAINT addresses_streets_fk FOREIGN KEY (street_id) REFERENCES public.streets(id) ON DELETE RESTRICT ON UPDATE CASCADE
# );
# CREATE INDEX addresses_area_id_idx ON public.addresses USING btree (area_id);
# CREATE UNIQUE INDEX addresses_family_id_idx ON public.addresses USING btree (family_id);
# CREATE INDEX addresses_geolocation_idx ON public.addresses USING gist (geolocation);
# CREATE UNIQUE INDEX addresses_store_id_idx ON public.addresses USING btree (store_id);
# CREATE INDEX addresses_street_id_idx ON public.addresses USING btree (street_id);
defmodule ChurchAdmin.Geography.Address do
  alias ChurchAdmin.{Geography, Person}

  use Ash.Resource,
    authorizers: [Ash.Policy.Authorizer],
    domain: ChurchAdmin.Geography,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  @moduledoc """
  Address resource maps to public.addresses. Includes PostGIS point for location.
  """

  graphql do
    type :addresses

    queries do
      list :addresses, :read
      get :address, :read
    end

    mutations do
      create :create_address, :create
      update :update_address, :update
      destroy :destroy_address, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "addresses"
    schema "public"

    references do
      reference :district, on_update: :update, on_delete: :restrict
      reference :area, on_update: :update, on_delete: :restrict
      reference :street, on_update: :update, on_delete: :restrict
      reference :family, on_update: :update, on_delete: :delete
      reference :store, on_update: :update, on_delete: :delete
    end
  end

  actions do
    defaults [:read, :destroy, create: :*, update: :*]
  end

  attributes do
    uuid_v7_primary_key :id

    attribute :country_iso_code, :string, default: "EG", public?: false
    attribute :substreet_name, :string, public?: true
    attribute :geolocation, :point, public?: true
    attribute :storey_number, :integer, public?: true
    attribute :house_number, :integer, public?: true
    attribute :apartment_number, :integer, public?: true
    attribute :special_landmark, :string, public?: true
  end

  relationships do
    belongs_to :district, Geography.District, public?: true
    belongs_to :area, Geography.Area, public?: true
    belongs_to :street, Geography.Street, public?: true
    belongs_to :family, Person.Family, public?: true
    belongs_to :store, Geography.Store, public?: true
  end
end
