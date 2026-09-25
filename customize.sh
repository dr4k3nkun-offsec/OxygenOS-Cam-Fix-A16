ui_print "==========================================="
ui_print "    OXYGENOS CAMERA & BLUETOOTH FIX        "
ui_print "           Version 2.0 (A16)               "
ui_print "          Created by DRAKEN                "
ui_print "==========================================="

ui_print "- Verifying target partitions..."
if [ -d "/my_product/lib64" ]; then
    ui_print "- [OK] Found /my_product filesystem"
else
    abort "! Error: /my_product partition inaccessible. Installation aborted."
fi

ui_print "- Setting up dynamic product namespace overlay..."
mkdir -p "$MODPATH/system/product/lib64"

ui_print "- Injecting camera libraries into runtime path..."
cp -a /my_product/lib64/* "$MODPATH/system/product/lib64/"
chmod 644 $MODPATH/system/product/lib64/*

ui_print "- Applying permissions & file security contexts..."
set_perm_recursive "$MODPATH" 0 0 0755 0644
chmod 0755 "$MODPATH/service.sh"

ui_print "- Flushing stale camera daemon cache..."
pm clear com.oplus.camera >/dev/null 2>&1

ui_print "==========================================="
ui_print "  Installation completed successfully!     "
ui_print "  Credits: DRAKEN                          "
ui_print "==========================================="
