// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import { formatDistance, subDays } from 'date-fns'
import _ from 'lodash'

console.log(formatDistance(subDays(new Date(), 3), new Date(), { addSuffix: true }))
console.log(_);
