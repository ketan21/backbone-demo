class Blog.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    title: null
    content: null
  
  initialize: ->
  	console.log "Initialized"
  	@bind "change", @render
    	
      


class Blog.Collections.PostsCollection extends Backbone.Collection
  model: Blog.Models.Post
  url: '/posts'

  # initialize: ->
  #   @bind "'add', @addOne", ->
  #     console.log "Inside new_view"

