package com.github.rosjava.android_apps.map_nav;

import android.content.Context;
import com.github.rosjava.android_apps.map_nav.R;
import com.github.rosjava.android_remocons.common_tools.apps.AppRemappings;
import org.ros.exception.RosRuntimeException;
import org.ros.exception.ServiceNotFoundException;
import org.ros.namespace.GraphName;
import org.ros.namespace.NameResolver;
import org.ros.node.AbstractNodeMain;
import org.ros.node.ConnectedNode;
import org.ros.node.service.ServiceClient;
import org.ros.node.service.ServiceResponseListener;
import world_canvas_msgs.ListMaps;
import world_canvas_msgs.ListMapsRequest;
import world_canvas_msgs.ListMapsResponse;
import world_canvas_msgs.PublishMap;
import world_canvas_msgs.PublishMapRequest;
import world_canvas_msgs.PublishMapResponse;

public class MapManager extends AbstractNodeMain {
    private ConnectedNode connectedNode;
    private String function;
    private ServiceResponseListener<ListMapsResponse> listServiceResponseListener;
    private String listSrvName;
    private String mapId;
    private NameResolver nameResolver;
    private boolean nameResolverSet = false;
    private String pubSrvName;
    private ServiceResponseListener<PublishMapResponse> publishServiceResponseListener;

    public MapManager(Context context, AppRemappings remaps) {
        this.listSrvName = remaps.get(context.getString(R.string.list_maps_srv));
        this.pubSrvName = remaps.get(context.getString(R.string.publish_map_srv));
    }

    public void setMapId(String mapId2) {
        this.mapId = mapId2;
    }

    public void setNameResolver(NameResolver newNameResolver) {
        this.nameResolver = newNameResolver;
        this.nameResolverSet = true;
    }

    public void setFunction(String function2) {
        this.function = function2;
    }

    public void setListService(ServiceResponseListener<ListMapsResponse> listServiceResponseListener2) {
        this.listServiceResponseListener = listServiceResponseListener2;
    }

    public void setPublishService(ServiceResponseListener<PublishMapResponse> publishServiceResponseListener2) {
        this.publishServiceResponseListener = publishServiceResponseListener2;
    }

    public void listMaps() {
        try {
            if (this.nameResolverSet) {
                this.listSrvName = this.nameResolver.resolve(this.listSrvName).toString();
            }
            ServiceClient<ListMapsRequest, ListMapsResponse> listMapsClient = this.connectedNode.newServiceClient(this.listSrvName, ListMaps._TYPE);
            listMapsClient.call(listMapsClient.newMessage(), this.listServiceResponseListener);
        } catch (ServiceNotFoundException e) {
            try {
                Thread.sleep(1000);
                listMaps();
            } catch (Exception e2) {
                e.printStackTrace();
                throw new RosRuntimeException((Throwable) e);
            }
        }
    }

    public void publishMap() {
        try {
            if (this.nameResolverSet) {
                this.pubSrvName = this.nameResolver.resolve(this.pubSrvName).toString();
            }
            ServiceClient<PublishMapRequest, PublishMapResponse> publishMapClient = this.connectedNode.newServiceClient(this.pubSrvName, PublishMap._TYPE);
            PublishMapRequest request = publishMapClient.newMessage();
            request.setMapId(this.mapId);
            publishMapClient.call(request, this.publishServiceResponseListener);
        } catch (ServiceNotFoundException e) {
            try {
                Thread.sleep(1000);
                listMaps();
            } catch (Exception e2) {
                throw new RosRuntimeException((Throwable) e);
            }
        }
    }

    public GraphName getDefaultNodeName() {
        return null;
    }

    public void onStart(ConnectedNode connectedNode2) {
        this.connectedNode = connectedNode2;
        if (this.function.equals("list")) {
            listMaps();
        } else if (this.function.equals("publish")) {
            publishMap();
        }
    }
}
