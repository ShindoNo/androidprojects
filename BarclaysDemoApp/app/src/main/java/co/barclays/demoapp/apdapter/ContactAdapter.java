package co.barclays.demoapp.apdapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;

import co.barclays.demoapp.R;
import co.barclays.demoapp.object.Contact;

/**
 * Created by leanh215 on 7/20/15.
 */
public class ContactAdapter extends BaseAdapter{

    Context mContext;
    ArrayList<Contact> mContactList;

    public ContactAdapter(Context context) {
        mContext = context;

    }

    public void setContactList(ArrayList<Contact> contactList) {
        mContactList = contactList;
        notifyDataSetChanged();
    }

    @Override
    public int getCount() {
        if (mContactList == null) {
            return 0;
        } else {
            return mContactList.size();
        }
    }

    @Override
    public Object getItem(int position) {
        return mContactList.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            convertView = LayoutInflater.from(mContext).inflate(R.layout.item_contact, null);
            ViewHolder holder = new ViewHolder(convertView);
            convertView.setTag(holder);
        }

        Contact contact = mContactList.get(position);

        ViewHolder holder = (ViewHolder)convertView.getTag();
        holder.tvName.setText(contact.getName());
        holder.tvPhone.setText(contact.getPhone());

        return convertView;
    }

    class ViewHolder {
        ImageView imgAvatar;
        TextView tvName;
        TextView tvPhone;

        public ViewHolder(View convertView) {
            imgAvatar = (ImageView)convertView.findViewById(R.id.img_avatar);
            tvName = (TextView)convertView.findViewById(R.id.tv_contact_name);
            tvPhone = (TextView)convertView.findViewById(R.id.tv_contact_phone);
        }
    }

}
