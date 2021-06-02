package com.bjpowernode.service.Impl;

import com.bjpowernode.dao.GoodsDao;
import com.bjpowernode.dao.SaleDao;
import com.bjpowernode.entity.Sale;
import com.bjpowernode.exception.NotEnoughException;
import com.bjpowernode.service.ShopService;
import org.springframework.transaction.annotation.Transactional;

public class ShopServiceImpl implements ShopService {
    private GoodsDao goodsDao;
    private SaleDao saleDao;
    // 订单方法
    @Override
    @Transactional
    public void buy(Integer id, Integer num) {
        // 创建订单实体类对象
        Sale sale = new Sale();
        sale.setGid(id);
        sale.setBnum(num);
        int res = saleDao.insertSale(sale);
        System.out.println("订单插入成功");
        if (goodsDao.getGoods(sale.getGid())==null){
            throw new NotEnoughException("商品不存在");
        }else if (goodsDao.getGoods(sale.getGid()).getNum()<num){
            throw new NotEnoughException("商品库存不足");
        }
        int res2 = goodsDao.updateGoods(sale);
        System.out.println("库存修改成功");
    }

    public ShopServiceImpl(GoodsDao goodsDao, SaleDao saleDao) {
        this.goodsDao = goodsDao;
        this.saleDao = saleDao;
    }

    public GoodsDao getGoodsDao() {
        return goodsDao;
    }

    public void setGoodsDao(GoodsDao goodsDao) {
        this.goodsDao = goodsDao;
    }

    public SaleDao getSaleDao() {
        return saleDao;
    }

    public void setSaleDao(SaleDao saleDao) {
        this.saleDao = saleDao;
    }
}
