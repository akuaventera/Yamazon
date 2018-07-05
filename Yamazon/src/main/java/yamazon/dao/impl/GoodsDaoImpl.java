package yamazon.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import yamazon.dao.GoodsDao;
import yamazon.entity.Goods;
@Repository
public class GoodsDaoImpl implements GoodsDao {
	@Autowired
	JdbcTemplate jt;

	public List<Goods> goodsSearch(String word) {
		String sql = "SELECT * FROM goods_info WHERE goods_name like ? or goods_name like ? or goods_name like ?";

		return jt.query(sql, new BeanPropertyRowMapper<Goods>(Goods.class),word+"%","%"+word,"%"+word+"%");
	}

	//値がないとき全件検索
		public List<Goods> findAll() {
			List<Goods> list = jt.query("SELECT goods_number, goods_name, goods_explain, goods_image, price, tax_price, category, stock FROM goods_info",
					new BeanPropertyRowMapper<Goods>(Goods.class));
			return list;
		}

		//検索用
		public List<Goods> findWord(String keyWord) {
			List<Goods> list = jt.query(
					"SELECT goods_number, goods_name, goods_explain, goods_image, price, tax_price, category, stock FROM goods_info WHERE goods_explain LIKE ? OR goods_explain LIKE ? OR goods_explain LIKE ?",
					new BeanPropertyRowMapper<Goods>(Goods.class),
					keyWord + "%", "%" + keyWord, "%" + keyWord + "%");
			return list;
		}
		public List<Goods> goodsMenu(){
			return jt.query("SELECT goods_number, goods_name, goods_explain, goods_image, price, tax_price, category, stock FROM goods_info ORDER BY random() LIMIT 4",
					new BeanPropertyRowMapper<Goods>(Goods.class));
		}
}
