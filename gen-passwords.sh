#!/bin/bash

PASSWORDS='
ADMIN_PASS
CINDER_DBPASS
CINDER_PASS
DASH_DBPASS
DEMO_PASS
GLANCE_DBPASS
GLANCE_PASS
KEYSTONE_DBPASS
METADATA_SECRET
NEUTRON_DBPASS
NEUTRON_PASS
NOVA_DBPASS
NOVA_PASS
PLACEMENT_PASS
RABBIT_PASS'

echo "#!/bin/bash"
for PW in $PASSWORDS; do
    echo export $PW=\"$(openssl rand -hex 4)\"
done
