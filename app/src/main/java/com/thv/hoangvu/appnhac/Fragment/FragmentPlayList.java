package com.thv.hoangvu.appnhac.Fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.thv.hoangvu.appnhac.Activity.DanhSachBaiHatActivity;
import com.thv.hoangvu.appnhac.Activity.DanhSachPlaylistActivity;
import com.thv.hoangvu.appnhac.Adapter.PlayListAdapter;
import com.thv.hoangvu.appnhac.Model.PlayList;
import com.thv.hoangvu.appnhac.R;
import com.thv.hoangvu.appnhac.Service.APIService;
import com.thv.hoangvu.appnhac.Service.DataService;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class FragmentPlayList extends Fragment{

    View view;
    ListView lvPlayList;
    TextView txtTitlePlayList,txtViewXemThemPlayList;
    PlayListAdapter playListAdapter;
    ArrayList<PlayList> arrayListPlayList;
    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.fragment_playlist,container,false);
        lvPlayList = view.findViewById(R.id.listviewplaylist);
        txtTitlePlayList = view.findViewById(R.id.textviewtitleplaylist);
        txtViewXemThemPlayList = view.findViewById(R.id.textviewmoreplaylist);
        getData();
        txtViewXemThemPlayList.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(), DanhSachPlaylistActivity.class);
                startActivity(intent);
            }
        });
        return view;
    }

    public void getData() {
        DataService dataService = APIService.getService();
        Call<List<PlayList>> callBack = dataService.getPlayListCurrentDay();
        callBack.enqueue(new Callback<List<PlayList>>() {
            @Override
            public void onResponse(Call<List<PlayList>> call, Response<List<PlayList>> response) {
                arrayListPlayList = (ArrayList<PlayList>) response.body();
                playListAdapter = new PlayListAdapter(getActivity(), android.R.layout.simple_list_item_1, arrayListPlayList);
                lvPlayList.setAdapter(playListAdapter);
                setListViewHeightBasedOnChildren(lvPlayList);
                lvPlayList.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                        Intent intent = new Intent(getActivity(), DanhSachBaiHatActivity.class);
                        intent.putExtra("itemplaylist", arrayListPlayList.get(position));
                        startActivity(intent);
                    }

                });
               /*lvPlayList.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
                   @Override
                   public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
                       Intent intent = new Intent(getActivity(), DanhSachBaiHatActivity.class);
                       intent.putExtra("itemplaylist", arrayListPlayList.get(position));
                       startActivity(intent);
                       return true;
                   }
               });
*/
            }

            @Override
            public void onFailure(Call<List<PlayList>> call, Throwable t) {

            }
        });
    }
    public void setListViewHeightBasedOnChildren(ListView listView) {
        ListAdapter listAdapter = listView.getAdapter();
        if (listAdapter == null) {
            // pre-condition
            return;
        }

        int totalHeight = listView.getPaddingTop() + listView.getPaddingBottom();
        int desiredWidth = View.MeasureSpec.makeMeasureSpec(listView.getWidth(), View.MeasureSpec.AT_MOST);
        for (int i = 0; i < listAdapter.getCount(); i++) {
            View listItem = listAdapter.getView(i, null, listView);
            if(listItem != null){
                // This next line is needed before you call measure or else you won't get measured height at all. The listitem needs to be drawn first to know the height.
                listItem.setLayoutParams(new RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT));
                listItem.measure(desiredWidth, View.MeasureSpec.UNSPECIFIED);
                totalHeight += listItem.getMeasuredHeight();

            }
        }

        ViewGroup.LayoutParams params = listView.getLayoutParams();
        params.height = totalHeight + (listView.getDividerHeight() * (listAdapter.getCount() - 1));
        listView.setLayoutParams(params);
        listView.requestLayout();
    }
}
