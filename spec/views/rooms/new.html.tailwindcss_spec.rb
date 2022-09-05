require 'rails_helper'

RSpec.describe "rooms/new", type: :view do
  before(:each) do
    assign(:room, Room.new(
      bed_capacity: 1,
      breakfast: false,
      parking: false,
      tv: false,
      books: false,
      balcony: false,
      yard: false,
      pet_friendly: false,
      hair_dryer: false,
      warm_water: false,
      smoke_alarm: false,
      smoking_allowed: false,
      refrigirator: false,
      microwave: false,
      security_camera: false,
      room_number: 1,
      other: "MyString"
    ))
  end

  it "renders new room form" do
    render

    assert_select "form[action=?][method=?]", rooms_path, "post" do

      assert_select "input[name=?]", "room[bed_capacity]"

      assert_select "input[name=?]", "room[breakfast]"

      assert_select "input[name=?]", "room[parking]"

      assert_select "input[name=?]", "room[tv]"

      assert_select "input[name=?]", "room[books]"

      assert_select "input[name=?]", "room[balcony]"

      assert_select "input[name=?]", "room[yard]"

      assert_select "input[name=?]", "room[pet_friendly]"

      assert_select "input[name=?]", "room[hair_dryer]"

      assert_select "input[name=?]", "room[warm_water]"

      assert_select "input[name=?]", "room[smoke_alarm]"

      assert_select "input[name=?]", "room[smoking_allowed]"

      assert_select "input[name=?]", "room[refrigirator]"

      assert_select "input[name=?]", "room[microwave]"

      assert_select "input[name=?]", "room[security_camera]"

      assert_select "input[name=?]", "room[room_number]"

      assert_select "input[name=?]", "room[other]"
    end
  end
end
