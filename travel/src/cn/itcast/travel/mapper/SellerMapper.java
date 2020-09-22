package cn.itcast.travel.mapper;

import cn.itcast.travel.entity.Seller;

public interface SellerMapper {

    Seller findSellerBySid(int sid);
}
