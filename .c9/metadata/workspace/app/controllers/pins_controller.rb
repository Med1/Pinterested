{"filter":false,"title":"pins_controller.rb","tooltip":"/app/controllers/pins_controller.rb","undoManager":{"mark":15,"position":15,"stack":[[{"group":"doc","deltas":[{"start":{"row":56,"column":3},"end":{"row":57,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":57,"column":0},"end":{"row":57,"column":1},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":57,"column":1},"end":{"row":57,"column":2},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":57,"column":2},"end":{"row":57,"column":3},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":57,"column":3},"end":{"row":58,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":56,"column":3},"end":{"row":57,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":58,"column":3},"action":"remove","lines":["class PinsController < ApplicationController","  before_action :set_pin, only: [:show, :edit, :update, :destroy]","  before_action :authenticate_user!, except: [:index, :show]","  before_action :correct_user, only: [:edit, :update, :destroy]","  ","  respond_to :html","","  def index","    @pins = Pin.all","  end","  ","  def show","  end","","  def new","    @pin = current_user.pins.build","  end","","  def edit","  end","","  def create","    @pin = current_user_pins_build(pin_params)","    if @pin.save","      redirect_to @pin, notice: \"Pin was successfully created.\"","    else","      render action: 'new'","    end","  end","","  def update","    if @pin.update(pin_params)","      redirect_to @pin, notice: \"Pin was successfully updated.\"","    else","      render action: 'edit'","    end","  end","","  def destroy","    @pin.destroy","    redirect_to pins_url","  end","","  private","    def set_pin","      @pin = Pin.find(params[:id])","    end","","    def pin_params","      params.require(:pin).permit(:description, :image)","    end","end","","  def correct_user","      @pin = current_user.pins.find_by(id: params[:id])","      redirect_to pins_path, notice: \"Not authorized to edit this pin\" if @pin.nil?","end","","end"]},{"start":{"row":0,"column":0},"end":{"row":3,"column":8},"action":"insert","lines":[" <div class=\"form-group\">","    <%= f.label :description %><br>","    <%= f.text_field :description, class: 'form-control' %>","  </div>"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":5,"column":2},"action":"remove","lines":[" <div class=\"form-group\">","    <%= f.label :description %><br>","    <%= f.text_field :description, class: 'form-control' %>","  </div>","","  "]},{"start":{"row":0,"column":0},"end":{"row":58,"column":4},"action":"insert","lines":["class PinsController < ApplicationController","  before_action :set_pin, only: [:show, :edit, :update, :destroy]","  before_action :authenticate_user!, except: [:index, :show]","  before_action :correct_user, only: [:edit, :update, :destroy] ","","  respond_to :html","","  def index","    @pins = Pin.all","  end","","  def show","  end","","  def new","    @pin = current_user.pins.build","  end","","  def edit","  end","","  def create","    @pin = current_user.pins.build(pin_params)","    if @pin.save","      redirect_to @pin, notice: 'Pin was successfully created.'","    else","      render action: 'new'","    end","  end","","  def update","   if @pin.update(pin_params)","      redirect_to @pin, notice: 'Pin was successfully updated.'","    else","      render action: 'edit'","    end","  end","","  def destroy","    @pin.destroy","    redirect_to pins_url","  end","","  private","    def set_pin","      @pin = Pin.find(params[:id])","    end","","    def pin_params","      params.require(:pin).permit(:description)","    end","","","  def correct_user","      @pin = current_user.pins.find_by(id: params[:id])","      redirect_to pins_path, notice: \"Not authorized to edit this pin\" if @pin.nil?","  end","","end "]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":46},"end":{"row":49,"column":47},"action":"insert","lines":[","]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":47},"end":{"row":49,"column":48},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":48},"end":{"row":49,"column":49},"action":"insert","lines":[":"]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":49},"end":{"row":49,"column":50},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":50},"end":{"row":49,"column":51},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":51},"end":{"row":49,"column":52},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":52},"end":{"row":49,"column":53},"action":"insert","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":53},"end":{"row":49,"column":54},"action":"insert","lines":["e"]}]}]]},"ace":{"folds":[],"scrolltop":540,"scrollleft":0,"selection":{"start":{"row":50,"column":7},"end":{"row":50,"column":7},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":37,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1429775526440,"hash":"7450ae11300d14fd95492dc4ec8e17ee2afc19f0"}