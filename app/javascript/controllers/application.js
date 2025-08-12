import "@hotwired/turbo-rails"
import "controllers"

import { application } from "./application"
import NestedFormController from "./nested_form_controller"
application.register("nested-form", NestedFormController)