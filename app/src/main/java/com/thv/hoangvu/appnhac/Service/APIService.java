package com.thv.hoangvu.appnhac.Service;

public class APIService {
    private static String base_url = "https://hamongkhang.000webhostapp.com/";

    public static DataService getService() {
        return APIRetrofitClient.getClient(base_url).create(DataService.class);
    }
}
