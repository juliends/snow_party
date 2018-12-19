// external imports
import 'bootstrap';
import Rails from 'rails-ujs';
import Turbolinks from 'turbolinks';
import { Application } from 'stimulus';
import { definitionsFromContext } from 'stimulus/webpack-helpers';

Rails.start();
Turbolinks.start();

// init stimulus
const application = Application.start();
const controllers = require.context('../controllers', true, /\.js$/);
application.load(definitionsFromContext(controllers));

import initCounter from "../cables/players_counter"
initCounter();
