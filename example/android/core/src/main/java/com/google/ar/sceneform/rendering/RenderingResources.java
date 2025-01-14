package com.google.ar.sceneform.rendering;

import android.content.Context;
import android.net.Uri;

import com.google.ar.sceneform.R;
import com.google.ar.sceneform.utilities.LoadHelper;

final class RenderingResources {

  public static enum Resource {
    CAMERA_MATERIAL,
    OCCLUSION_CAMERA_MATERIAL,
    OCCLUSION_CAMERA_TEST_MATERIAL,
    OPAQUE_COLORED_MATERIAL,
    TRANSPARENT_COLORED_MATERIAL,
    OPAQUE_TEXTURED_MATERIAL,
    TRANSPARENT_TEXTURED_MATERIAL,
    PLANE_SHADOW_MATERIAL,
    PLANE_MATERIAL,
    PLANE,
    VIEW_RENDERABLE_MATERIAL,
  };

  
  private static int GetSceneformSourceResource(Context context, Resource resource) {
    switch (resource) {
      case CAMERA_MATERIAL:
        return LoadHelper.rawResourceNameToIdentifier(context, "ar_environment_material_flat");
      case OCCLUSION_CAMERA_MATERIAL:
        return LoadHelper.rawResourceNameToIdentifier(context, "ar_environment_material_depth");
      case OPAQUE_COLORED_MATERIAL:
        return LoadHelper.rawResourceNameToIdentifier(context, "sceneform_opaque_colored_material");
      case TRANSPARENT_COLORED_MATERIAL:
        return LoadHelper.rawResourceNameToIdentifier(
            context, "sceneform_transparent_colored_material");
      case OPAQUE_TEXTURED_MATERIAL:
        return LoadHelper.rawResourceNameToIdentifier(
            context, "sceneform_opaque_textured_material");
      case TRANSPARENT_TEXTURED_MATERIAL:
        return LoadHelper.rawResourceNameToIdentifier(
            context, "sceneform_transparent_textured_material");
      case PLANE_SHADOW_MATERIAL:
        return LoadHelper.rawResourceNameToIdentifier(context, "sceneform_plane_shadow_material");
      case PLANE_MATERIAL:
        return LoadHelper.rawResourceNameToIdentifier(context, "sceneform_plane_material");
      case PLANE:
        return LoadHelper.drawableResourceNameToIdentifier(context, "file_example");
      case VIEW_RENDERABLE_MATERIAL:
        return LoadHelper.rawResourceNameToIdentifier(context, "sceneform_view_material");
    }
    return 0;
  }

  static Uri GetSceneformSourceResourceUri(Context context, Resource resource) {
    switch (resource) {
      case CAMERA_MATERIAL:
        return LoadHelper.resourceToUri(context, R.raw.ar_environment_material_flat);
      case OCCLUSION_CAMERA_MATERIAL:
        return LoadHelper.resourceToUri(context, R.raw.ar_environment_material_depth);
      case OPAQUE_COLORED_MATERIAL:
        return LoadHelper.resourceToUri(context, R.raw.sceneform_opaque_colored_material);
      case TRANSPARENT_COLORED_MATERIAL:
        return LoadHelper.resourceToUri(context, R.raw.sceneform_transparent_colored_material);
      case OPAQUE_TEXTURED_MATERIAL:
        return LoadHelper.resourceToUri(context, R.raw.sceneform_opaque_textured_material);
      case TRANSPARENT_TEXTURED_MATERIAL:
        return LoadHelper.resourceToUri(context, R.raw.sceneform_transparent_textured_material);
      case PLANE_SHADOW_MATERIAL:
        return LoadHelper.resourceToUri(context, R.raw.sceneform_plane_shadow_material);
      case PLANE_MATERIAL:
        return LoadHelper.resourceToUri(context, R.raw.sceneform_plane_material);
      case PLANE:
        return LoadHelper.resourceToUri(context, R.drawable.file_example);
      case VIEW_RENDERABLE_MATERIAL:
        return LoadHelper.resourceToUri(context, R.raw.sceneform_view_material);
    }
    return null;
  }
  
  private static int GetMaterialFactoryBlazeResource(Resource resource) {return 0;}














  
  private static int GetViewRenderableBlazeResource(Resource resource) {return 0;}








  
  private static int GetSceneformBlazeResource(Resource resource) {return 0;}




























  public static int GetSceneformResource(Context context, Resource resource) {
    int blazeResource = GetSceneformBlazeResource(resource);
    if (blazeResource != 0) {
      return blazeResource;
    }
    return GetSceneformSourceResource(context, resource);
  }

  private RenderingResources() {}
}
