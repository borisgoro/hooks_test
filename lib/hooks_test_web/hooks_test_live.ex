defmodule HooksTestWeb.HomeLive do
  use Phoenix.LiveView, layout: {HooksTestWeb.Layouts, :app}

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, panel: 1)}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <.live_component id="test-lc" panel={@panel} module={HooksTestWeb.TestLiveComponent} />
    """
  end

  # @impl true
  # def render(%{panel: 1} = assigns) do
  #   ~H"""
  #   <div id="panel1" phx-hook="Hook1" class="mt-2 p-2 border-2">
  #     <.panel panel="1" />
  #   </div>
  #   """
  # end

  # def render(%{panel: 2} = assigns) do
  #   ~H"""
  #   <div id="panel2" phx-hook="Hook2" class="mt-2 p-2 border-2">
  #     <.panel panel="2" />
  #   </div>
  #   """
  # end

  # def panel(assigns) do
  #   ~H"""
  #   <div><%= "Panel #{@panel}" %></div>
  #   <button class="mt-2 p-1 border-2" phx-click="panel1">Panel 1</button>
  #   <button class="mt-2 p-1 border-2" phx-click="panel2">Panel 2</button>
  #   """
  # end

  # @impl true
  # def handle_event("panel1", _, socket) do
  #   {:noreply, assign(socket, panel: 1)}
  # end

  # def handle_event("panel2", _, socket) do
  #   {:noreply, assign(socket, panel: 2)}
  # end
end
