App.LeadController = Ember.ObjectController.extend

  isEditing: false

  actions:
    saveChanges: -> @get('model').save()
    delete: ->
      @get('model').destroyRecord().then =>
        @transitionToRoute 'leads'

  showUnsavedMessage: ( ->
    @get('isDirty') and !@get('isSaving')
  ).property('isDirty', 'isSaving')
