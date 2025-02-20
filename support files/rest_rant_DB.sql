PGDMP         &                {         	   Rest_Rant    14.5    14.5     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    41224 	   Rest_Rant    DATABASE     o   CREATE DATABASE "Rest_Rant" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "Rest_Rant";
                postgres    false            �            1259    41225    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false            �            1259    41228    comments    TABLE     '  CREATE TABLE public.comments (
    comment_id integer NOT NULL,
    place_id smallint,
    stars double precision,
    content character varying(255),
    rant boolean,
    author_id smallint,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.comments;
       public         heap    postgres    false            �            1259    41231    comments_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.comments_comment_id_seq;
       public          postgres    false    210                       0    0    comments_comment_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.comments_comment_id_seq OWNED BY public.comments.comment_id;
          public          postgres    false    211            �            1259    41232    places    TABLE     [  CREATE TABLE public.places (
    place_id integer NOT NULL,
    name character varying(255),
    city character varying,
    state character varying(255),
    cuisines character varying(255),
    pic character varying(255),
    founded integer,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.places;
       public         heap    postgres    false            �            1259    41237    places_place_id_seq    SEQUENCE     �   CREATE SEQUENCE public.places_place_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.places_place_id_seq;
       public          postgres    false    212                       0    0    places_place_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.places_place_id_seq OWNED BY public.places.place_id;
          public          postgres    false    213            �            1259    41238    users    TABLE     ;  CREATE TABLE public.users (
    user_id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    password_digest character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    41243    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    214                       0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    215            j           2604    41244    comments comment_id    DEFAULT     z   ALTER TABLE ONLY public.comments ALTER COLUMN comment_id SET DEFAULT nextval('public.comments_comment_id_seq'::regclass);
 B   ALTER TABLE public.comments ALTER COLUMN comment_id DROP DEFAULT;
       public          postgres    false    211    210            k           2604    41245    places place_id    DEFAULT     r   ALTER TABLE ONLY public.places ALTER COLUMN place_id SET DEFAULT nextval('public.places_place_id_seq'::regclass);
 >   ALTER TABLE public.places ALTER COLUMN place_id DROP DEFAULT;
       public          postgres    false    213    212            l           2604    41246    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    215    214                       0    41225    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    209   r                 0    41228    comments 
   TABLE DATA           q   COPY public.comments (comment_id, place_id, stars, content, rant, author_id, created_at, updated_at) FROM stdin;
    public          postgres    false    210   �                 0    41232    places 
   TABLE DATA           m   COPY public.places (place_id, name, city, state, cuisines, pic, founded, created_at, updated_at) FROM stdin;
    public          postgres    false    212   W#                 0    41238    users 
   TABLE DATA           o   COPY public.users (user_id, first_name, last_name, email, created_at, updated_at, password_digest) FROM stdin;
    public          postgres    false    214   �/                  0    0    comments_comment_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.comments_comment_id_seq', 29, true);
          public          postgres    false    211                       0    0    places_place_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.places_place_id_seq', 34, true);
          public          postgres    false    213                       0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 18, true);
          public          postgres    false    215            n           2606    41248     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    209            p           2606    41250    comments comments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (comment_id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    210            r           2606    41252    places places_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (place_id);
 <   ALTER TABLE ONLY public.places DROP CONSTRAINT places_pkey;
       public            postgres    false    212            t           2606    41254    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    214                b   x�U�;� Dў�@�'��ņ�k�� ��������!M�ݵ���}a�M>����-��6�����qU�:ϼ�/  ��m�������|�)�͠�'��&         c  x�}U���8���荜xPH�G2�d�.v'���I@���~�6đG<Ɖ��^�~}0Kx�%O� �bM�\;���rt���I����X��)�EF�\<��	KD�d/�����O ��6'h�m�SNQ��>u�9u�àL���i&k<k�C�:�)�j�b��!��XU3QF����0�,�#�{yT�'��t}3;�\�\[�{�H�S�|�Ǜ_�g����r��"U�(�w��z1av$@;�c���^�)*-_y��Nu*����o ��9�G������GW�yN3V���A���]��~�R�����^������wa|�C�=�nv��M�u�v9oa���M�Q���e��YE���Y�A�H˓/n���
����=	nlN���Q��+f>��3.�����T����=�H#w"eh@E�|'�{��
�dI��	l��'`e-��t�v��5+���.R��2h3����$9_��@�g���_������ZѴx���Ϯ���;4�M�j�6����:?�*_3.�����Q�M�C�ɾW��+�u��8���^��Nb	[�����zƞ|\V�3H�Z�qӦ˥��ǎ���3�����|���=+����;�5�0�Q]����f�M9X��u����F�BV�v+_�YA$��Pϟ��:Ͳ��)F�\���uك�^㡗#p����͂�����0��ŜZ�z����GD{��&6�{Ʃ�=N%x��>��^_;=ď�VٰC-8-��-D8�8J���W%��F��=�⇀��R�C$�q{c��oا��a<cr'9��-?n^�����|����ZF��         �  x��X�n�8��<��3�X�e;q�(�|���M�t�.
�D[l$Q%�(�y�v_n�dϽ��LR�.�:�H����{z��/���Jh'^�y�;�J�\	�I��T�F�R�T�E+o��e*2�cm�9�ʤVV,M�����b܉����.X3u�,Ea\-V�P���`�]L��6��x"kQ�k�D��,���K�sST�	�u ^�V湪wE�T�x�6t�M�9S�ԐU�OyM�8��L���t!W4�K��*TYӉ��u��h��� ��'��5�P�����5H�Ź�
��)�U�^�v�ӅΥ��4���e.�d�9���|)2s�ll�M{�G�O�{Y]Wn6�8B�*L�����'��a٠�r#S7���t��i���;U7U���3�QU��-�Ѩ��P�Y8��{�d��'3�3
{G�0q]"�\���g�T�T������`�=m��HA�*�3����>Ι���$�&'/����4��1�o9G��(��ZմԮ��Z���%9��#����_>�Q%�!l��y߉��&ӡ�D��M[
�?�@刦i�Gᨳ ��:�tp�j���IK���c5�ƣ�`ɽ�D������7���\|���~n�>��yNk>�'�?m�V~^��:0vEO��Ɨ.�����W8��1{���O����B�Te���_�ۃ����ٓ(�N�y�����}��H���o/0t~�5��j��R����O+�>���>���o�foEA�}6��v�Qo"��ufJqiur��%��T;J�F�L, D�Tݨ�T�� =v�yف��:�%������@�rc��\j⩪�F&��e-�kd&������P�	H��SR���$�A�JF���s`#/������Re�e*�d-�tdND�|��6�:P�l��*i��5�&�uE��24��Y�Qj^�pj��6[�m�r��4&A��g9f�B��Z�2���`��>����F����O�:�W[J;"#@+QV��֔�+���k�����ǎŲ�����|b52ה ��I�>���t�7�RW�D/uҽL6���k��w �`k�Ƃ�R�f��>:.x����&(T���s�����8�O���h8�?^��b^�\<�t�?���4O@��#;ѸG�q��_��VÕǪ&�/��J�F�?��G��׮��E�"�n^�����Z��Ʊx�	�UC��0��@�8�?�ӫ�`������5�[?�ȉZ���L�1��J�Hn� �1��V~��46�*��V�L$t�{.RC��:�h@����� ��P����W�X��P��.�կ5�z�9�;�c��_��N�(W�T���$1�s�<>>�į��P��
)M	S�O��P���)�	�� v�O�s�9��B9$���{��k�
�Ԗ�u��*s������'(��6W�/$�Ʀ�|
� f$�.*�X(�����5D������+�( c`#1� I�/Hp�w�s�j�K0����R�Q�?h���7P\)���e-o=X��E*#)�hI1I��>�F�A��\rܰi�<+S�I���̻�F�R ��9	ޣ��&�xpD(k�e�w�������`T�D�"<3yJlQ���6{Hz9���'���Bqd�`oR^�C�����d��L��Z���9�����H>D���f�$�xY���TQ���8�
/w#�)����$5�Gb�oH�����������IxT?&��d6�{�Ǭvh'��^A��񤕘d|F��4&%�pA��R,�7	���o�����J�m�v���]��J#������T�2ޟ���?�$g�B]YY�����(�r�D�p�Z�/7�p��H ��H�_4(p��M=a�ɼ�ڍ}��EL��B۩�]�Pd��$���,�Q�Z΍#��Y6
�=���^/ ��o�,�9�`��%��ok�������/��R"\���ܗD�G����/%؍,Q(ǋ�����:����j�&	�+���^�T1��\q�#j��.f0�|�7� �՝%#	nZ����_K�+����&�8,��E��F刷��uЊ�{������Gz���@|$��La^�~�{��*����db�d*�p�B����T��dȭ��Fq���dfIj-Z�d�M�̺�������$ßVoǋ���v�y�~?:[��翴A���a"Og��Y���<���N���.eb�Q
�%�\�̰���w��Tf C����J�3Ǆ���f�?�>rI��n�0_�s��� ����q��#��m|E1�|w����L-{2O(�з|A�M�%��L��b'\�Oyǧ=V��	b�-*��+K0��9z� =ƶ@";�ɑ�3��Y�  �1I������o��������E�_�7�/ws~v6i�^]޾(��Ax�Og��tt��MCp���_��q�%��?<����6->��6�JH�������t|�? 7\��~�|�2�+���
����ĲB�{|�&��x?��=��_�v��ނT=��:�r�ㆍH����+pD�y�h�ӛ���T>Z��JUL�M�U]�Y��4 -mCz�+S^ �A�!��U����A����)�3H}L	%��Pah�߻w����͕ѬS�ގ����/i��=��h��I�b�]����@�.���)����D-��]_@����90AJ=_�:��Ft4���#��s���;�N�H��OR˽�Z�|�Z��!�t���䄰5�ȬϺ����`CVn�8�*��S,[��qή�>+Di������w'o���o����yu��I����q��^��awq���=~�����`�-���\��q�zﳵo��i�R}hu�$�PwL��A����P0VV��Y T�D4�Hn<]�Q�[����l��иe�rw��߮GEB��)w�kaq+�>�Z�k��p^��үD
�S��N����ĺ����4��&�ۃ���+a4"t��/qK�R�..*�DVi�*2�q�ǚ�H邁���*Ys���)��$�d�FQoG'��JԶ��Ix6�U��*�7��즞�"�l��mVY�7�.ʝNE�w� �-(U����M
�Poh7�I4���(TQ4��q2��tN�j2V��p8��~�H�7F�eՏ�l4�ݏ̢ip���C�p6>����S����_EK	�         �  x�}�9w�:�k�W�"mI�<U1�`������_�����U�g��|kkKIʀ�nYV�W~fIs��@!�?c򇈺�uD ����������ӱ���'��-�� _��nbK�'ޞK]gE�i.��kWb�ח����s��D��1�H�3���?Hձ�SeIl�~�$�fW�lf��p�X�iw�B�}ҋ�}Q���4��疊��l�/����e�^C��^�H�mE�N%�a��� �ru-�����t���0��ēmÝ��`�W5�/��_y���@��A�*0�:|�&�/X��e]B��#փ�`�⵼��!Rl�8x��m_{��Է�Y5�݁����`��L�K�:�L��T�ª�� ��rW�ci�H(�Ej�|���j��䏯F�ɯs���-79}+����:��d���������,��*�9��{ކ�S��l��|��zrۭc�od�VC�a/�Z�֊ϒ�E57����qg��i{����/�T��v��bl9�����u��Z�m��B��`E��=i�*�_�����;H�|�F<T��n?�!�d(�γ��G/��kflx� 늞������Y�2�2�no�'*|kUt������i��5��g
+V�C�t��O�"&ĺ�Y5��5���@��.f$�,,ˠ�p�����{����P��HG������h5\3��,������.���۵�r��֧�����c�|�F��bU�\
0Y���z^��� ���s^��%%��P����Q�V��ʐ���v�rq`ҖW�Ā�͋�s�ݷqBf�5�U"`��UVz�~|U+i�_�$���~G��6;����M";������G�V8��'L�������UN���nO��� ��ó     