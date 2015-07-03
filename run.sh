#!/bin/sh
geminabox_command="gem inabox $WERCKER_GEMINABOX_NAME --host $WERCKER_GEMINABOX_HOST --port $WERCKER_GEMINABOX_PORT"
gembuild_command="gem build  $WERCKER_GEMINABOX_BUILD_NAME"

if [ "$WERCKER_GEMINABOX_OVERWRITE" = "true" ] ; then
  geminabox_command="$geminabox_command --overwrite"
fi

install_geminabox() {
    # Install bundler gem if needed
    if ! type geminabox &> /dev/null; then
         info 'geminabox gem not found, starting installing it';
         sudo gem install geminabox --no-rdoc --no-ri --version "$WERCKER_GEMINABOX_INABOX_VERSION";

         if [[ $? -ne 0 ]]; then
             fail 'geminabox gem installation failed';
         else
             info 'finished geminabox gem installation';
         fi
    else
        info 'geminabox gem is available, and will not be installed by this step';
    fi
}

info 'Start geminabox install.';

install_geminabox;

if [ "$WERCKER_GEMINABOX_BUILD" = "true" ] ; then
  info 'Start gem build.';
  debug "$gembuild_command";
  $gembuild_command;
fi

info 'Start gem inabox.';

debug "$geminabox_command";
$geminabox_command;

if [[ $? -ne 0 ]]; then
    fail 'geminabox command failed';
else
    success "finished $geminabox_command";
fi
