production: # Environment
    first_thing:
      - source: /.cloud66/newrelic.sh # Hook type
        destination: /tmp/newrelic.sh
        execute: true
        apply_during: build_only
        sudo: true
    after_rails: # Hook point
      - command: cd $STACK_PATH && chown -R nginx:app_writers tmp/ && chmod -R 775 tmp/ 
        target: rails 
        sudo: true
        
