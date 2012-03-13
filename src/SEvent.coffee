class @TimelineEvent extends Backbone.Model
    defaults: {
        'when': new Date()
    }
    validate: (attrs) ->
        if (!attrs.title)
            return "cannot have an empty post"
