
if(other == creator) exit;
//instance_destroy();
/// checar si el objeto es parte de nuestra faction
if(other.faction == faction) exit;

/// Damage object
with(other) event_perform(ev_other,ev_user1);