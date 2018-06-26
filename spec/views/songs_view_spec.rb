require 'rails_helper'

describe 'song checking' , :type => :request do
  it 'check 3 songs in html' do
    visit '/song/html'
    # save_screenshot('/home/tor/one-dee/song-html.png', :full => true)
    expect(page).to have_xpath("/html/body/table/tbody/tr", count: 3)
  end

  it 'check 3 songs in json' do
    visit 'song/json'
    # save_screenshot('/home/tor/one-dee/song-json.png', :full => true)
    expect(page).to have_text('"id":', count: 3)
  end
  
  it 'check 3 columns in html' do
    get '/song/html'
    songs = assigns[:songs]
    visit '/song/html'
    # check headers
    within('table') do
      expect(page).to have_xpath("thead/tr/th[1]", text: "Name")
      expect(page).to have_xpath("thead/tr/th[2]", text: "Brand")
      expect(page).to have_xpath("thead/tr/th[3]", text: "Album")
    end
    # check content
    3.times do |index|
      content = find(:xpath, "/html/body/table/tbody/tr[#{index+1}]/td[1]").text
      expect(content).to eq(songs[index].name)
      content = find(:xpath, "/html/body/table/tbody/tr[#{index+1}]/td[2]").text
      expect(content).to eq(songs[index].brand)
      content = find(:xpath, "/html/body/table/tbody/tr[#{index+1}]/td[3]").text
      expect(content).to eq(songs[index].album)
    end
  end
end
