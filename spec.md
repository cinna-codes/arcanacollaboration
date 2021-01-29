# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
        => Self explanatory.
- [x] Include at least one has_many relationship 
        => User has_many Readings.
        => Spread has_many Readings.
        => Reading has_many CardsReadings (join table).
        => Card has_many CardsReadings (join table).
- [x] Include at least one belongs_to relationship 
        => Reading belongs_to User.
        => Reading belongs_to Spread.
        => CardsReading belongs_to Reading.
        => CardsReading belongs_to Card.
- [x] Include at least two has_many through relationships
        => User has_many Spreads, through Readings.
        => Spread has_many Users, through Readings.
        => Reading has_many Cards, through CardsReadings.
        => Card has_many Readings, through CardsReadings.
- [x] Include at least one many-to-many relationship
        => User has_many Spreads, through Readings; Spread has_many Users, through Readings.
        => Reading has_many Cards, through CardsReadings; Card has_many Readings, through CardsReadings.
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user
        => Reading has a `desc` attribute where a user can write a description of the Reading.
        => CardsReadings has an `upright` boolean attribute where a user can choose whether the card they drew was in the Upright position (`true`) or Reversed (`false`).
- [x] Include reasonable validations for simple model objects
        => User requires username. It also requires email & password in the cases of the User not being created/validated through a third party authorization.
        => Spread requires the presence of a unique `title` and the presence of `desc`.
        => Reading requires `user_id`, `spread_id`, and `desc`.
        => Card requires the presence of a unique `name`.
        => CardsReadings requires `spread_id`.
- [x] Include a class level ActiveRecord scope method
        => Reading class has scope methods for filtering by what spread it belongs to, what user it belongs to, and what user & spread it belongs to.
- [x] Include signup 
        => Sign up through Bcrypt or OmniAuth.
- [x] Include login 
        => Log in through Bcrypt or OmniAuth.
- [x] Include logout 
        => Session is cleared.
- [x] Include third party signup/login 
        => Sign up & log in through OmniAuth Github.
- [x] Include nested resource show or index 
        => `spreads/:spread_id/readings` will return a list of Reading objects associated with that `:spread_id`.
- [x] Include nested resource "new" form 
        => `spreads/:spread_id/readings/new` will automatically assign the associated `:spread_id` to a new Reading object.
- [x] Include form display of validation errors 
        => `readings/new` and `readings/edit` form_for will display a list of errors if the Reading object is not valid.

Confirm:
- [x] The application is pretty DRY
        => `before_action` used in controllers to avoid duplicating the same code across multiple routes (e.g. `readings_controller.rb` has a method called `set_reading` that runs before the `show`, `edit`, `update`, and `destroy` actions).
- [x] Limited logic in controllers
        => Controllers mostly concerned with setting variables for views or communicating with models/database.
- [x] Views use helper methods if appropriate
        => Readings views have two helper methods: `spread_id_field` which determines whether a user can choose a spread for a new Reading object (through vanilla `readings/new`) or whether there's a `hidden_field_tag` for a `spread_id` associated with a particular spread (through `spreads/:spread_id/readings/new`).
        => `index_title` determines what title `views/readings/index.html.erb` will display based on params (`params[:user_id]`, `params[:spread_id]`, and params without either will display different titles).
- [x] Views use partials if appropriate
        => Reading views use a partial `_form` for both `views/readings/new.html.erb` and `views/readings/edit.html.erb`.