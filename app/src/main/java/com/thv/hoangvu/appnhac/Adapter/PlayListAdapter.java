package com.thv.hoangvu.appnhac.Adapter;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.squareup.picasso.Picasso;
import com.thv.hoangvu.appnhac.Activity.DanhSachBaiHatActivity;
import com.thv.hoangvu.appnhac.Model.PlayList;
import com.thv.hoangvu.appnhac.R;

import java.util.ArrayList;
import java.util.List;

public class PlayListAdapter extends ArrayAdapter<PlayList> {

    ArrayList<PlayList> playListArrayList;

    public PlayListAdapter(@NonNull Context context, int resource, @NonNull List<PlayList> objects) {
        super(context, resource, objects);
    }

    class ViewHolder{
        TextView txtTenPlayList;
        ImageView imgBackGround, imgPlayList;
    }

    @NonNull
    @Override
    public View getView(final int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        ViewHolder viewHolder = null;
        if (convertView == null){
            LayoutInflater layoutInflater = LayoutInflater.from(getContext());
            convertView = layoutInflater.inflate(R.layout.dong_playlist, null);
            viewHolder = new ViewHolder();
            viewHolder.txtTenPlayList = convertView.findViewById(R.id.textviewtenplaylist);
            viewHolder.imgPlayList = convertView.findViewById(R.id.imageviewplaylist);
            viewHolder.imgBackGround = convertView.findViewById(R.id.imagebackgroundplaylist);
            convertView.setTag(viewHolder);
        }else{
            viewHolder = (ViewHolder) convertView.getTag();
        }
        if(position==0) {
            final PlayList playList = getItem(position);
            Picasso.with(getContext()).load("https://avatar-ex-swe.nixcdn.com/playlist/share/2020/05/27/b/d/5/0/1590550937056.jpg").into(viewHolder.imgBackGround);
            Picasso.with(getContext()).load("https://avatar-ex-swe.nixcdn.com/playlist/share/2020/05/27/b/d/5/0/1590550937056.jpg").into(viewHolder.imgPlayList);
            viewHolder.txtTenPlayList.setText("Top b??i h??t nhi???u ng?????i nghe nh???t");
            playList.setTen("Top b??i h??t nhi???u ng?????i nghe nh???t");
            playList.setHinh("https://avatar-ex-swe.nixcdn.com/playlist/share/2020/05/27/b/d/5/0/1590550937056.jpg");
            playList.setIcon("https://avatar-ex-swe.nixcdn.com/playlist/share/2020/05/27/b/d/5/0/1590550937056.jpg");
            playList.setIdPlayList("1");
        }
        if(position==1) {
            final PlayList playList = getItem(position);
            Picasso.with(getContext()).load("https://avatar-ex-swe.nixcdn.com/playlist/share/2020/05/27/b/d/5/0/1590550785288.jpg").into(viewHolder.imgBackGround);
            Picasso.with(getContext()).load("https://static.wikia.nocookie.net/backstreetboys/images/c/c9/NewKidsOnTheBlock.jpg/revision/latest?cb=20210413144548").into(viewHolder.imgPlayList);
            viewHolder.txtTenPlayList.setText("Nh???ng b???n nh???c hay nh???t c???a Script");
            playList.setTen("Nh???ng b???n nh???c hay nh???t c???a Script");
            playList.setHinh("https://avatar-ex-swe.nixcdn.com/playlist/share/2020/05/27/b/d/5/0/1590550785288.jpg");
            playList.setIcon("https://static.wikia.nocookie.net/backstreetboys/images/c/c9/NewKidsOnTheBlock.jpg/revision/latest?cb=20210413144548");
            playList.setIdPlayList("2");
        }
        if(position==2) {
            final PlayList playList = getItem(position);
            Picasso.with(getContext()).load("https://static2.yan.vn/YanNews/2167221/202003/lam-moi-playlist-bang-nhac-la-ma-hay-den-tu-nghe-si-it-ai-biet-8aabd8c6.jpg").into(viewHolder.imgBackGround);
            Picasso.with(getContext()).load("https://i2.wp.com/themusicuniverse.com/wp-content/uploads/2021/10/newkids.jpg?fit=750%2C450").into(viewHolder.imgPlayList);
            viewHolder.txtTenPlayList.setText("Nh???ng b??i h??t b??? l??ng qu??n");
            playList.setTen("Nh???ng b??i h??t b??? l??ng qu??n");
            playList.setHinh("https://static2.yan.vn/YanNews/2167221/202003/lam-moi-playlist-bang-nhac-la-ma-hay-den-tu-nghe-si-it-ai-biet-8aabd8c6.jpg");
            playList.setIcon("https://i2.wp.com/themusicuniverse.com/wp-content/uploads/2021/10/newkids.jpg?fit=750%2C450");
            playList.setIdPlayList("3");
        }
        return convertView;
    }
}
