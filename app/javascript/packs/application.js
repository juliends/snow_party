// external imports
import 'bootstrap';
import Rails from 'rails-ujs';
import Turbolinks from 'turbolinks';
import { Application } from 'stimulus';
import { definitionsFromContext } from 'stimulus/webpack-helpers';
import { loadDynamicBannerText } from '../components/typed';

Rails.start();
Turbolinks.start();

// init stimulus
const application = Application.start();
const controllers = require.context('../controllers', true, /\.js$/);
application.load(definitionsFromContext(controllers));
loadDynamicBannerText();
