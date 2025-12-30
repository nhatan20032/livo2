# generated from livox_ros_driver2/env_hook/99_livox_library_path.sh.in

# Add /usr/local/lib to LD_LIBRARY_PATH for livox_lidar_sdk_shared.so
if [ -z "$LD_LIBRARY_PATH" ]; then
  export LD_LIBRARY_PATH="/usr/local/lib"
else
  # Check if /usr/local/lib is already in LD_LIBRARY_PATH
  case ":$LD_LIBRARY_PATH:" in
    *:/usr/local/lib:*)
      # Already in path, do nothing
      ;;
    *)
      # Not in path, add it
      export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib"
      ;;
  esac
fi

