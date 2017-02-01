var dogs = [
  new Dog({
    id: 1,
    name: "SnoopDogg",
    dog_type: "Siberian"
  }),
  new Dog({
    id: 2,
    name: "Snoopy",
    dog_type: "Bulldog"
  }),
  new Dog({
    id: 3,
    name: "Terry",
    dog_type: "Labrador"
  }),
  new Dog({
    id: 4,
    name: "MadMax",
    dog_type: "Pit bull"
  })
];

_.each(dogs, function(dog){
  var view = new ListItemView({ model: dog });
  view.render();
  $("#list").append(view.el);
});
