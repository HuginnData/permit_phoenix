defmodule PermitPhoenix.Macros do
  @moduledoc false

  defmacro permit_ecto_callbacks do
    if :ok == Application.ensure_loaded(:permit_ecto) do
      quote do
        @callback base_query(Permit.Types.resolution_context()) :: Ecto.Query.t()
        @callback finalize_query(Ecto.Query.t(), Permit.Types.resolution_context()) ::
                    Ecto.Query.t()
      end
    end
  end
end