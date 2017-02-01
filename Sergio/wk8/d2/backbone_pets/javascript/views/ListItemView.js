var ListItemView = Backbone.View.extend({
  tagName: "div",
  initialize: function(){
    this.listenTo(this.model, "change: name", this.render);
  },
  render: function(){
    var html = Handlebars.templates.dog(this.model.toJSON());
    this.$el.html(html);
  }
});
