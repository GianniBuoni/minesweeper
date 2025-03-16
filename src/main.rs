use bevy::prelude::*;

#[cfg(feature = "debug")]
use bevy_instector_egui::WorldInspectorPlugin;

fn main() {
    let mut app = App::new();
    app.add_plugins(DefaultPlugins).run();
}
