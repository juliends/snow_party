import "bootstrap";

import Rails from 'rails-ujs';
Rails.start();

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import initCounter from "../cables/players_counter"
import initResultsTable from "../cables/quiz_results"

const application = Application.start()
const context = require.context("../controllers", true, /\.js$/);
application.load(definitionsFromContext(context))
initCounter();
initResultsTable();
