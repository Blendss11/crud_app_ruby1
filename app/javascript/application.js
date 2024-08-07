import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "controllers"
require("jquery")
require("@nathanvda/cocoon")


Rails.start()
ActiveStorage.start()
Turbolinks.start()

// start: Sidebar
