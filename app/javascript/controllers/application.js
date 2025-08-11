import { Application } from "@hotwired/stimulus"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
import RailsNestedForm from "@stimulus-components/rails-nested-form"

const application = Application.start()
eagerLoadControllersFrom("controllers", application)

application.register("nested-form", RailsNestedForm)

export { application }

