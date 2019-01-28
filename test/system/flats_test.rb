# frozen_string_literal: true

require 'application_system_test_case'

class FlatsTest < ApplicationSystemTestCase
  setup do
    @flat = flats(:one)
  end

  test 'visiting the index' do
    visit flats_url
    assert_selector 'h1', text: 'Flats'
  end

  test 'creating a Flat' do
    visit flats_url
    click_on 'New Flat'

    fill_in 'Description', with: @flat.description
    fill_in 'Lat', with: @flat.lat
    fill_in 'Lng', with: @flat.lng
    fill_in 'Location', with: @flat.location
    fill_in 'Name', with: @flat.name
    fill_in 'Photo url', with: @flat.photo_url
    fill_in 'Price', with: @flat.price
    click_on 'Create Flat'

    assert_text 'Flat was successfully created'
    click_on 'Back'
  end

  test 'updating a Flat' do
    visit flats_url
    click_on 'Edit', match: :first

    fill_in 'Description', with: @flat.description
    fill_in 'Lat', with: @flat.lat
    fill_in 'Lng', with: @flat.lng
    fill_in 'Location', with: @flat.location
    fill_in 'Name', with: @flat.name
    fill_in 'Photo url', with: @flat.photo_url
    fill_in 'Price', with: @flat.price
    click_on 'Update Flat'

    assert_text 'Flat was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Flat' do
    visit flats_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Flat was successfully destroyed'
  end
end