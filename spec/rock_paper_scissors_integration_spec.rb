require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the rock paper scissors path', {:type => :feature}) do
    it('processes the user entries and returns results') do
      visit('/')
      # find("option[value='rock']").click
      find(:select, from, options).find(:option, value, options).select_option

      # fill-in('Player 1', find("option[value='rock']").click)
      # fill-in('Player 2', find("option[value='paper']").click)
      click_button('Go!')
      # expect(page).to have_content('Player 1 Rock Loses')
    end
    it('processes the user entries and returns results') do
      visit('/')
      # fill-in('Player 1', find("option[value='rock']").click)
      # fill-in('Player 2', find("option[value='rock']").click)
      click_button('Go!')
      # expect(page).to have_content('Ties')
    end
    it('processes the user entries and returns results') do
      visit('/')
      # fill-in('Player 1', find("option[value='rock']").click)
      # fill-in('Player 2', find("option[value='scissors']").click)
      click_button('Go!')
      # expect(page).to have_content('Player 1 Rock Wins')
    end
  end
