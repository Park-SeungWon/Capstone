package Adapter;

import android.app.Activity;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.example.myapplication4.R;

import java.util.ArrayList;

import Database.Tbluser;


public class UsersAdapter extends RecyclerView.Adapter<UsersAdapter.CustomViewHolder> {

    private ArrayList<Tbluser> mList = null;
    private Activity context = null;


    public UsersAdapter(Activity context, ArrayList<Tbluser> list) {
        this.context = context;
        this.mList = list;
    }

    class CustomViewHolder extends RecyclerView.ViewHolder {
        protected TextView user_id;
        protected TextView password;
        protected TextView authority_level;
        protected TextView name;
        protected TextView email;
        protected TextView status;
        protected TextView logintime;
        protected TextView remark;
        protected TextView create_time;
        protected TextView update_time;
        protected TextView time_stamp;


        public CustomViewHolder(View view) {
            super(view);

            // 객체에 data를 넣을 UI객체의 ID 할당
            this.user_id = (TextView) view.findViewById(R.id.textView_list_id);
            this.password = (TextView) view.findViewById(R.id.textView_list_name);
            this.authority_level = (TextView) view.findViewById(R.id.textView_list_country);
        }
    }


    @Override
    public CustomViewHolder onCreateViewHolder(ViewGroup viewGroup, int viewType) {
        View view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_list, null);
        CustomViewHolder viewHolder = new CustomViewHolder(view);

        return viewHolder;
    }

    @Override
    public void onBindViewHolder(@NonNull CustomViewHolder viewholder, int position) {
        viewholder.user_id.setText(mList.get(position).getUser_id());
        viewholder.password.setText(mList.get(position).getPassword());
        viewholder.authority_level.setText(mList.get(position).getAuthority_level());
        /*viewholder.name.setText(mList.get(position).getName());
        viewholder.email.setText(mList.get(position).getEmail());
        viewholder.status.setText(mList.get(position).getStatus());
        viewholder.logintime.setText(mList.get(position).getLogintime());
        viewholder.remark.setText(mList.get(position).getRemark());
        viewholder.create_time.setText(mList.get(position).getCreate_time());
        viewholder.update_time.setText(mList.get(position).getUpdate_time());
        viewholder.time_stamp.setText(mList.get(position).getTime_stamp());*/
    }

    @Override
    public int getItemCount() {
        return (null != mList ? mList.size() : 0);
    }

}