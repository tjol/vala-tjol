/* gnome-keyring-1.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "GnomeKeyring", lower_case_cprefix = "gnome_keyring_")]
namespace GnomeKeyring {
	[Compact]
	[CCode (copy_function = "gnome_keyring_access_control_copy", cheader_filename = "gnome-keyring.h")]
	public class AccessControl {
		public unowned GnomeKeyring.AccessControl copy ();
		[CCode (has_construct_function = false)]
		public AccessControl (GnomeKeyring.ApplicationRef application, GnomeKeyring.AccessType types_allowed);
	}
	[Compact]
	[CCode (copy_function = "gnome_keyring_application_ref_copy", cheader_filename = "gnome-keyring.h")]
	public class ApplicationRef {
		public unowned GnomeKeyring.ApplicationRef copy ();
		[CCode (has_construct_function = false)]
		public ApplicationRef ();
	}
	[CCode (ref_function = "gnome_keyring_attribute_list_ref", unref_function = "gnome_keyring_attribute_list_unref", cheader_filename = "gnome-keyring.h")]
	public class AttributeList {
		public GnomeKeyring.Attribute[] data;
		public uint len;
		public void append_string (string name, string value);
		public void append_uint32 (string name, uint32 value);
		public unowned GnomeKeyring.AttributeList copy ();
		public GnomeKeyring.Attribute index (int i);
	}
	[Compact]
	[CCode (cheader_filename = "gnome-keyring.h")]
	public class Found {
		public weak GnomeKeyring.AttributeList attributes;
		public uint item_id;
		public weak string keyring;
		public weak string secret;
		public static void list_free (GLib.List found_list);
	}
	[Compact]
	[CCode (copy_function = "gnome_keyring_info_copy", cheader_filename = "gnome-keyring.h")]
	public class Info {
		public unowned GnomeKeyring.Info copy ();
		public ulong get_ctime ();
		public bool get_is_locked ();
		public bool get_lock_on_idle ();
		public uint32 get_lock_timeout ();
		public ulong get_mtime ();
		public void set_lock_on_idle (bool value);
		public void set_lock_timeout (uint32 value);
	}
	[Compact]
	[CCode (copy_function = "gnome_keyring_item_info_copy", cheader_filename = "gnome-keyring.h")]
	public class ItemInfo {
		public unowned GnomeKeyring.ItemInfo copy ();
		public ulong get_ctime ();
		public unowned string get_display_name ();
		public ulong get_mtime ();
		public unowned string get_secret ();
		[CCode (has_construct_function = false)]
		public ItemInfo ();
		public void set_display_name (string value);
		public void set_secret (string value);
		public void set_type (GnomeKeyring.ItemType type);
	}
	[Compact]
	[CCode (cheader_filename = "gnome-keyring.h")]
	public class NetworkPasswordData {
		public weak string authtype;
		public weak string domain;
		public uint32 item_id;
		public weak string keyring;
		public weak string object;
		public weak string password;
		public uint32 port;
		public weak string protocol;
		public weak string server;
		public weak string user;
	}
	[Compact]
	[CCode (cheader_filename = "gnome-keyring.h")]
	public class PasswordSchema {
		public void* attributes;
		public GnomeKeyring.ItemType item_type;
		public void* reserved1;
		public void* reserved2;
		public void* reserved3;
	}
	[CCode (type_id = "GNOME_KEYRING_TYPE_ATTRIBUTE", cheader_filename = "gnome-keyring.h")]
	public struct Attribute {
		public weak string name;
		public GnomeKeyring.AttributeType type;
		public void* value;
	}
	[CCode (cprefix = "GNOME_KEYRING_ACCESS_", has_type_id = "0", cheader_filename = "gnome-keyring.h")]
	public enum AccessRestriction {
		ASK,
		DENY,
		ALLOW
	}
	[CCode (cprefix = "GNOME_KEYRING_ACCESS_", has_type_id = "0", cheader_filename = "gnome-keyring.h")]
	public enum AccessType {
		READ,
		WRITE,
		REMOVE
	}
	[CCode (cprefix = "GNOME_KEYRING_ATTRIBUTE_TYPE_", has_type_id = "0", cheader_filename = "gnome-keyring.h")]
	public enum AttributeType {
		STRING,
		UINT32
	}
	[CCode (cprefix = "GNOME_KEYRING_ITEM_INFO_", has_type_id = "0", cheader_filename = "gnome-keyring.h")]
	public enum ItemInfoFlags {
		BASICS,
		SECRET
	}
	[CCode (cprefix = "GNOME_KEYRING_ITEM_", has_type_id = "0", cheader_filename = "gnome-keyring.h")]
	public enum ItemType {
		GENERIC_SECRET,
		NETWORK_PASSWORD,
		NOTE,
		CHAINED_KEYRING_PASSWORD,
		ENCRYPTION_KEY_PASSWORD,
		PK_STORAGE,
		LAST_TYPE
	}
	[CCode (cprefix = "GNOME_KEYRING_RESULT_", has_type_id = "0", cheader_filename = "gnome-keyring.h")]
	public enum Result {
		OK,
		DENIED,
		NO_KEYRING_DAEMON,
		ALREADY_UNLOCKED,
		NO_SUCH_KEYRING,
		BAD_ARGUMENTS,
		IO_ERROR,
		CANCELLED,
		KEYRING_ALREADY_EXISTS,
		NO_MATCH
	}
	[CCode (cheader_filename = "gnome-keyring.h")]
	public delegate void OperationDoneCallback (GnomeKeyring.Result result);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public delegate void OperationGetAttributesCallback (GnomeKeyring.Result result, GnomeKeyring.AttributeList attributes);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public delegate void OperationGetIntCallback (GnomeKeyring.Result result, uint32 val);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public delegate void OperationGetItemInfoCallback (GnomeKeyring.Result result, GnomeKeyring.ItemInfo info);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public delegate void OperationGetKeyringInfoCallback (GnomeKeyring.Result result, GnomeKeyring.Info info);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public delegate void OperationGetListCallback (GnomeKeyring.Result result, GLib.List list);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public delegate void OperationGetStringCallback (GnomeKeyring.Result result, string str);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public const string DEFAULT;
	[CCode (cheader_filename = "gnome-keyring.h")]
	public const int GNOME_KEYRING_ITEM_APPLICATION_SECRET;
	[CCode (cheader_filename = "gnome-keyring.h")]
	public const int GNOME_KEYRING_ITEM_INFO_ALL;
	[CCode (cheader_filename = "gnome-keyring.h")]
	public const int GNOME_KEYRING_ITEM_TYPE_MASK;
	[CCode (cheader_filename = "gnome-keyring.h")]
	public const string GNOME_KEYRING_SESSION;
	[CCode (cheader_filename = "gnome-keyring.h")]
	public const GnomeKeyring.PasswordSchema NETWORK_PASSWORD;
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static unowned GLib.List acl_copy (GLib.List list);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void acl_free (GLib.List acl);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void cancel_request (void* request);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* change_password (string keyring, string? original, string? password, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result change_password_sync (string keyring, string? original, string? password);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* create (string keyring_name, string? password, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result create_sync (string keyring_name, string? password);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result daemon_prepare_environment_sync ();
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result daemon_set_display_sync (string display);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* @delete (string keyring, GnomeKeyring.OperationDoneCallback callback, void* data, GLib.DestroyNotify destroy_data);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* delete_password (GnomeKeyring.PasswordSchema schema, owned GnomeKeyring.OperationDoneCallback callback, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result delete_password_sync (GnomeKeyring.PasswordSchema schema, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result delete_sync (string keyring);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* find_items (GnomeKeyring.ItemType type, GnomeKeyring.AttributeList attributes, owned GnomeKeyring.OperationGetListCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result find_items_sync (GnomeKeyring.ItemType type, GnomeKeyring.AttributeList attributes, GLib.List found);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* find_itemsv (GnomeKeyring.ItemType type, owned GnomeKeyring.OperationGetListCallback callback, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result find_itemsv_sync (GnomeKeyring.ItemType type, GLib.List found, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* find_network_password (string? user, string? domain, string? server, string? object, string? protocol, string? authtype, uint32 port, owned GnomeKeyring.OperationGetListCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result find_network_password_sync (string? user, string? domain, string? server, string? object, string? protocol, string? authtype, uint32 port, out unowned GLib.List results);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* find_password (GnomeKeyring.PasswordSchema schema, owned GnomeKeyring.OperationGetStringCallback callback, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result find_password_sync (GnomeKeyring.PasswordSchema schema, out unowned string password, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void free_password (string password);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* get_default_keyring (owned GnomeKeyring.OperationGetStringCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result get_default_keyring_sync (out unowned string keyring);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* get_info (string? keyring, owned GnomeKeyring.OperationGetKeyringInfoCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result get_info_sync (string? keyring, out unowned GnomeKeyring.Info info);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static bool is_available ();
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.AccessType item_ac_get_access_type (GnomeKeyring.AccessControl ac);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static unowned string item_ac_get_display_name (GnomeKeyring.AccessControl ac);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static unowned string item_ac_get_path_name (GnomeKeyring.AccessControl ac);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void item_ac_set_access_type (GnomeKeyring.AccessControl ac, GnomeKeyring.AccessType value);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void item_ac_set_display_name (GnomeKeyring.AccessControl ac, string value);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void item_ac_set_path_name (GnomeKeyring.AccessControl ac, string value);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_create (string? keyring, GnomeKeyring.ItemType type, string display_name, GnomeKeyring.AttributeList attributes, string secret, bool update_if_exists, owned GnomeKeyring.OperationGetIntCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_create_sync (string? keyring, GnomeKeyring.ItemType type, string display_name, GnomeKeyring.AttributeList attributes, string secret, bool update_if_exists, uint32 item_id);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_delete (string? keyring, uint32 id, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_delete_sync (string? keyring, uint32 id);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_get_acl (string? keyring, uint32 id, owned GnomeKeyring.OperationGetListCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_get_acl_sync (string? keyring, uint32 id, GLib.List acl);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_get_attributes (string? keyring, uint32 id, owned GnomeKeyring.OperationGetAttributesCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_get_attributes_sync (string? keyring, uint32 id, out unowned GnomeKeyring.AttributeList attributes);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_get_info (string? keyring, uint32 id, owned GnomeKeyring.OperationGetItemInfoCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_get_info_full (string? keyring, uint32 id, uint32 flags, owned GnomeKeyring.OperationGetItemInfoCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_get_info_full_sync (string? keyring, uint32 id, uint32 flags, out unowned GnomeKeyring.ItemInfo info);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static unowned GnomeKeyring.Result? item_get_info_sync (string keyring, uint32 id, out unowned GnomeKeyring.ItemInfo info);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_grant_access_rights (string? keyring, string display_name, string full_path, uint32 id, GnomeKeyring.AccessType rights, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_grant_access_rights_sync (string? keyring, string display_name, string full_path, uint32 id, GnomeKeyring.AccessType rights);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_set_acl (string? keyring, uint32 id, GLib.List acl, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_set_acl_sync (string? keyring, uint32 id, GLib.List acl);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_set_attributes (string? keyring, uint32 id, GnomeKeyring.AttributeList attributes, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_set_attributes_sync (string? keyring, uint32 id, GnomeKeyring.AttributeList attributes);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_set_info (string? keyring, uint32 id, GnomeKeyring.ItemInfo info, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_set_info_sync (string? keyring, uint32 id, GnomeKeyring.ItemInfo info);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* list_item_ids (string? keyring, owned GnomeKeyring.OperationGetListCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result list_item_ids_sync (string? keyring, out GLib.List<uint> ids);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* list_keyring_names (owned GnomeKeyring.OperationGetListCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result list_keyring_names_sync (GLib.List keyrings);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* @lock (string keyring, GnomeKeyring.OperationDoneCallback callback, void* data, GLib.DestroyNotify destroy_data);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* lock_all (owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result lock_all_sync ();
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result lock_sync (string? keyring);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* memory_alloc (ulong sz);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void memory_free (void* p);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static bool memory_is_secure (void* p);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* memory_realloc (void* p, ulong sz);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static unowned string memory_strdup (string str);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* memory_try_alloc (ulong sz);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* memory_try_realloc (void* p, ulong sz);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void network_password_free (GnomeKeyring.NetworkPasswordData data);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void network_password_list_free (GLib.List list);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static unowned string result_to_message (GnomeKeyring.Result res);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* set_default_keyring (string keyring, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result set_default_keyring_sync (string keyring);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* set_info (string? keyring, GnomeKeyring.Info info, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result set_info_sync (string? keyring, GnomeKeyring.Info info);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* set_network_password (string? keyring, string? user, string? domain, string? server, string? object, string? protocol, string? authtype, uint32 port, string? password, owned GnomeKeyring.OperationGetIntCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result set_network_password_sync (string? keyring, string? user, string? domain, string? server, string? object, string? protocol, string? authtype, uint32 port, string? password, out uint32 item_id);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* store_password (GnomeKeyring.PasswordSchema schema, string? keyring, string display_name, string password, owned GnomeKeyring.OperationDoneCallback callback, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result store_password_sync (GnomeKeyring.PasswordSchema schema, string keyring, string display_name, string password, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void string_list_free (GLib.List strings);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* unlock (string? keyring, string? password, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result unlock_sync (string? keyring, string? password);
}
