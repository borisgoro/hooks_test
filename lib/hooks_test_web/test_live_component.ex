defmodule HooksTestWeb.TestLiveComponent do
  use HooksTestWeb, :live_component

  @impl true
  def render(%{panel: 1} = assigns) do
    ~H"""
    <div id="panel1" phx-hook="Hook1" class="mt-2 p-2 border-2">
      <.panel panel="1" myself={@myself} />
    </div>
    """
  end

  def render(%{panel: 2} = assigns) do
    ~H"""
    <div id="panel2" phx-hook="Hook2" class="mt-2 p-2 border-2">
      <.panel panel="2" myself={@myself} />
    </div>
    """
  end

  def panel(assigns) do
    ~H"""
    <div><%= "Panel #{@panel}" %></div>
    <button class="mt-2 p-1 border-2" phx-click="panel1" phx-target={@myself}>Panel 1</button>
    <button class="mt-2 p-1 border-2" phx-click="panel2" phx-target={@myself}>Panel 2</button>
    """
  end

  @impl true
  def handle_event("panel1", _, socket) do
    {:noreply, assign(socket, panel: 1)}
  end

  def handle_event("panel2", _, socket) do
    {:noreply, assign(socket, panel: 2)}
  end
end
