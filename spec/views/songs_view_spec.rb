require 'rails_helper'

describe 'song checking' , js: true do
  it 'check 3 songs in html' do
    visit '/song/html'
    # save_screenshot('/home/tor/one-dee/song-html.png', :full => true)
    within('table') do
      expect(page).to have_xpath("/html/body/table/tbody/tr", count: 3)
    end
  end
  it 'check 3 songs in json' do
    visit 'song/json'
    # save_screenshot('/home/tor/one-dee/song-json.png', :full => true)
    expect(page).to have_text('"id":', count: 3)
  end
  it 'check 3 columns in html' do
    visit 'song/html'
    within('table') do
      expect(page).to have_xpath("thead/tr/th[1]", text: "Name")
      expect(page).to have_xpath("thead/tr/th[2]", text: "Brand")
      expect(page).to have_xpath("thead/tr/th[3]", text: "Album")
    end
  end
end
